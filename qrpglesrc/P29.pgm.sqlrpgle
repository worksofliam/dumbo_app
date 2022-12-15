**free

ctl-opt dftactgrp(*no);

dcl-pi P29;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P22.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'

dcl-ds T442 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T442 FROM T442 LIMIT 1;

theCharVar = 'Hello from P29';
dsply theCharVar;
callp localProc();
P6();
P22();
P18();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P29 in the procedure';
end-proc;