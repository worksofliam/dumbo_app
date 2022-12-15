**free

ctl-opt dftactgrp(*no);

dcl-pi P1090;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P354.rpgleinc'
/copy 'qrpgleref/P270.rpgleinc'

dcl-ds theTable extname('T405') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T405 LIMIT 1;

theCharVar = 'Hello from P1090';
dsply theCharVar;
P11();
P354();
P270();
return;