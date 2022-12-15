**free

ctl-opt dftactgrp(*no);

dcl-pi P58;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P51.rpgleinc'
/copy 'qrpgleref/P50.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'

dcl-ds theTable extname('T59') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T59 LIMIT 1;

theCharVar = 'Hello from P58';
dsply theCharVar;
P51();
P50();
P16();
return;