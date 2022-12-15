**free

ctl-opt dftactgrp(*no);

dcl-pi P130;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P60.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P116.rpgleinc'

dcl-ds theTable extname('T202') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T202 LIMIT 1;

theCharVar = 'Hello from P130';
dsply theCharVar;
callp localProc();
P60();
P13();
P116();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P130 in the procedure';
end-proc;