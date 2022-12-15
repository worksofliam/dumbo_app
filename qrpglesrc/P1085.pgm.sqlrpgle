**free

ctl-opt dftactgrp(*no);

dcl-pi P1085;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P458.rpgleinc'
/copy 'qrpgleref/P578.rpgleinc'
/copy 'qrpgleref/P320.rpgleinc'

dcl-ds theTable extname('T215') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T215 LIMIT 1;

theCharVar = 'Hello from P1085';
dsply theCharVar;
P458();
P578();
P320();
return;