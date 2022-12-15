**free

ctl-opt dftactgrp(*no);

dcl-pi P2310;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1591.rpgleinc'
/copy 'qrpgleref/P546.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'

dcl-ds T247 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T247 FROM T247 LIMIT 1;

theCharVar = 'Hello from P2310';
dsply theCharVar;
P1591();
P546();
P8();
return;