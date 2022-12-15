**free

ctl-opt dftactgrp(*no);

dcl-pi P959;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P865.rpgleinc'
/copy 'qrpgleref/P781.rpgleinc'
/copy 'qrpgleref/P658.rpgleinc'

dcl-ds theTable extname('T1183') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1183 LIMIT 1;

theCharVar = 'Hello from P959';
dsply theCharVar;
P865();
P781();
P658();
return;