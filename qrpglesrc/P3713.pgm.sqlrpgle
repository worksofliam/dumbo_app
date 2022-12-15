**free

ctl-opt dftactgrp(*no);

dcl-pi P3713;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1027.rpgleinc'
/copy 'qrpgleref/P91.rpgleinc'
/copy 'qrpgleref/P781.rpgleinc'

dcl-ds T493 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T493 FROM T493 LIMIT 1;

theCharVar = 'Hello from P3713';
dsply theCharVar;
P1027();
P91();
P781();
return;