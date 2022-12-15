**free

ctl-opt dftactgrp(*no);

dcl-pi P1302;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P865.rpgleinc'
/copy 'qrpgleref/P346.rpgleinc'
/copy 'qrpgleref/P1055.rpgleinc'

dcl-ds T1259 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1259 FROM T1259 LIMIT 1;

theCharVar = 'Hello from P1302';
dsply theCharVar;
callp localProc();
P865();
P346();
P1055();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1302 in the procedure';
end-proc;