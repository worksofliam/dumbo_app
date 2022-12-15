**free

ctl-opt dftactgrp(*no);

dcl-pi P1092;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P988.rpgleinc'
/copy 'qrpgleref/P116.rpgleinc'
/copy 'qrpgleref/P1027.rpgleinc'

dcl-ds T413 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T413 FROM T413 LIMIT 1;

theCharVar = 'Hello from P1092';
dsply theCharVar;
P988();
P116();
P1027();
return;