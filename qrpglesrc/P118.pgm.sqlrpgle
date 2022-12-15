**free

ctl-opt dftactgrp(*no);

dcl-pi P118;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P79.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'
/copy 'qrpgleref/P60.rpgleinc'

dcl-ds T141 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T141 FROM T141 LIMIT 1;

theCharVar = 'Hello from P118';
dsply theCharVar;
callp localProc();
P79();
P18();
P60();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P118 in the procedure';
end-proc;