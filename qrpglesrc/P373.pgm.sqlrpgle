**free

ctl-opt dftactgrp(*no);

dcl-pi P373;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P270.rpgleinc'
/copy 'qrpgleref/P116.rpgleinc'
/copy 'qrpgleref/P368.rpgleinc'

dcl-ds theTable extname('T829') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T829 LIMIT 1;

theCharVar = 'Hello from P373';
dsply theCharVar;
P270();
P116();
P368();
return;