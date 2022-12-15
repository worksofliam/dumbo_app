**free

ctl-opt dftactgrp(*no);

dcl-pi P1788;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P784.rpgleinc'
/copy 'qrpgleref/P1602.rpgleinc'
/copy 'qrpgleref/P822.rpgleinc'

dcl-ds T536 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T536 FROM T536 LIMIT 1;

theCharVar = 'Hello from P1788';
dsply theCharVar;
P784();
P1602();
P822();
return;