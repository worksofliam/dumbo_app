**free

ctl-opt dftactgrp(*no);

dcl-pi P205;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P25.rpgleinc'
/copy 'qrpgleref/P158.rpgleinc'

dcl-ds T67 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T67 FROM T67 LIMIT 1;

theCharVar = 'Hello from P205';
dsply theCharVar;
callp localProc();
P8();
P25();
P158();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P205 in the procedure';
end-proc;