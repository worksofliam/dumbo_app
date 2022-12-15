**free

ctl-opt dftactgrp(*no);

dcl-pi P2046;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P1919.rpgleinc'
/copy 'qrpgleref/P1922.rpgleinc'

dcl-ds T544 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T544 FROM T544 LIMIT 1;

theCharVar = 'Hello from P2046';
dsply theCharVar;
P11();
P1919();
P1922();
return;