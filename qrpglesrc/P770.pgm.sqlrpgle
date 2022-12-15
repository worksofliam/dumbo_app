**free

ctl-opt dftactgrp(*no);

dcl-pi P770;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P308.rpgleinc'
/copy 'qrpgleref/P666.rpgleinc'
/copy 'qrpgleref/P586.rpgleinc'

dcl-ds T103 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T103 FROM T103 LIMIT 1;

theCharVar = 'Hello from P770';
dsply theCharVar;
callp localProc();
P308();
P666();
P586();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P770 in the procedure';
end-proc;