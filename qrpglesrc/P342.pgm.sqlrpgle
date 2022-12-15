**free

ctl-opt dftactgrp(*no);

dcl-pi P342;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P46.rpgleinc'
/copy 'qrpgleref/P116.rpgleinc'
/copy 'qrpgleref/P273.rpgleinc'

dcl-ds theTable extname('T196') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T196 LIMIT 1;

theCharVar = 'Hello from P342';
dsply theCharVar;
P46();
P116();
P273();
return;