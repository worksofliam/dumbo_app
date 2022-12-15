**free

ctl-opt dftactgrp(*no);

dcl-pi P820;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P255.rpgleinc'
/copy 'qrpgleref/P203.rpgleinc'
/copy 'qrpgleref/P273.rpgleinc'

dcl-ds theTable extname('T73') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T73 LIMIT 1;

theCharVar = 'Hello from P820';
dsply theCharVar;
P255();
P203();
P273();
return;