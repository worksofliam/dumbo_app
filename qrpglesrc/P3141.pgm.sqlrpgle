**free

ctl-opt dftactgrp(*no);

dcl-pi P3141;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P823.rpgleinc'
/copy 'qrpgleref/P3094.rpgleinc'
/copy 'qrpgleref/P2829.rpgleinc'

dcl-ds theTable extname('T422') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T422 LIMIT 1;

theCharVar = 'Hello from P3141';
dsply theCharVar;
P823();
P3094();
P2829();
return;