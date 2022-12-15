**free

ctl-opt dftactgrp(*no);

dcl-pi P3276;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1539.rpgleinc'
/copy 'qrpgleref/P988.rpgleinc'
/copy 'qrpgleref/P3081.rpgleinc'

dcl-ds T836 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T836 FROM T836 LIMIT 1;

theCharVar = 'Hello from P3276';
dsply theCharVar;
P1539();
P988();
P3081();
return;