**free

ctl-opt dftactgrp(*no);

dcl-pi P1137;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P218.rpgleinc'
/copy 'qrpgleref/P807.rpgleinc'
/copy 'qrpgleref/P1116.rpgleinc'

dcl-ds theTable extname('T1136') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1136 LIMIT 1;

theCharVar = 'Hello from P1137';
dsply theCharVar;
P218();
P807();
P1116();
return;