**free

ctl-opt dftactgrp(*no);

dcl-pi P150;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P125.rpgleinc'
/copy 'qrpgleref/P87.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'

dcl-ds T67 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T67 FROM T67 LIMIT 1;

theCharVar = 'Hello from P150';
dsply theCharVar;
callp localProc();
P125();
P87();
P13();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P150 in the procedure';
end-proc;