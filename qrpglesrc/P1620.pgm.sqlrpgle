**free

ctl-opt dftactgrp(*no);

dcl-pi P1620;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P351.rpgleinc'

dcl-ds T883 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T883 FROM T883 LIMIT 1;

theCharVar = 'Hello from P1620';
dsply theCharVar;
P6();
P351();
return;