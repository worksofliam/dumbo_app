**free

ctl-opt dftactgrp(*no);

dcl-pi P156;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P113.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'

dcl-ds T104 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T104 FROM T104 LIMIT 1;

theCharVar = 'Hello from P156';
dsply theCharVar;
callp localProc();
P8();
P113();
P4();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P156 in the procedure';
end-proc;