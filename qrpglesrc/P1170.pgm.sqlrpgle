**free

ctl-opt dftactgrp(*no);

dcl-pi P1170;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P73.rpgleinc'
/copy 'qrpgleref/P892.rpgleinc'
/copy 'qrpgleref/P25.rpgleinc'

dcl-ds T145 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T145 FROM T145 LIMIT 1;

theCharVar = 'Hello from P1170';
dsply theCharVar;
callp localProc();
P73();
P892();
P25();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1170 in the procedure';
end-proc;