**free

ctl-opt dftactgrp(*no);

dcl-pi P653;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P464.rpgleinc'
/copy 'qrpgleref/P181.rpgleinc'
/copy 'qrpgleref/P69.rpgleinc'

dcl-ds T2 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T2 FROM T2 LIMIT 1;

theCharVar = 'Hello from P653';
dsply theCharVar;
callp localProc();
P464();
P181();
P69();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P653 in the procedure';
end-proc;