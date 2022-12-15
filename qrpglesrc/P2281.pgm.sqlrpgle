**free

ctl-opt dftactgrp(*no);

dcl-pi P2281;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1792.rpgleinc'
/copy 'qrpgleref/P1061.rpgleinc'
/copy 'qrpgleref/P330.rpgleinc'

dcl-ds T426 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T426 FROM T426 LIMIT 1;

theCharVar = 'Hello from P2281';
dsply theCharVar;
P1792();
P1061();
P330();
return;