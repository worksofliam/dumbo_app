**free

ctl-opt dftactgrp(*no);

dcl-pi P43;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P34.rpgleinc'

dcl-ds theTable extname('T40') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T40 LIMIT 1;

theCharVar = 'Hello from P43';
dsply theCharVar;
callp localProc();
P0();
P8();
P34();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P43 in the procedure';
end-proc;