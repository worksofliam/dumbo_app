**free

ctl-opt dftactgrp(*no);

dcl-pi P5077;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P208.rpgleinc'
/copy 'qrpgleref/P4114.rpgleinc'
/copy 'qrpgleref/P661.rpgleinc'

dcl-ds theTable extname('T758') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T758 LIMIT 1;

theCharVar = 'Hello from P5077';
dsply theCharVar;
P208();
P4114();
P661();
return;