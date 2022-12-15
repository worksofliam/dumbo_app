**free

ctl-opt dftactgrp(*no);

dcl-pi P3364;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P273.rpgleinc'
/copy 'qrpgleref/P1103.rpgleinc'
/copy 'qrpgleref/P2792.rpgleinc'

dcl-ds theTable extname('T1735') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1735 LIMIT 1;

theCharVar = 'Hello from P3364';
dsply theCharVar;
P273();
P1103();
P2792();
return;