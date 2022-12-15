**free

ctl-opt dftactgrp(*no);

dcl-pi P1216;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P73.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'
/copy 'qrpgleref/P945.rpgleinc'

dcl-ds theTable extname('T179') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T179 LIMIT 1;

theCharVar = 'Hello from P1216';
dsply theCharVar;
callp localProc();
P73();
P16();
P945();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1216 in the procedure';
end-proc;