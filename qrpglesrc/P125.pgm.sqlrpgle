**free

ctl-opt dftactgrp(*no);

dcl-pi P125;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P122.rpgleinc'
/copy 'qrpgleref/P82.rpgleinc'
/copy 'qrpgleref/P123.rpgleinc'

dcl-ds T483 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T483 FROM T483 LIMIT 1;

theCharVar = 'Hello from P125';
dsply theCharVar;
P122();
P82();
P123();
return;