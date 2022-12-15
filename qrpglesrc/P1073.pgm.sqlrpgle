**free

ctl-opt dftactgrp(*no);

dcl-pi P1073;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P328.rpgleinc'
/copy 'qrpgleref/P349.rpgleinc'
/copy 'qrpgleref/P294.rpgleinc'

dcl-ds T804 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T804 FROM T804 LIMIT 1;

theCharVar = 'Hello from P1073';
dsply theCharVar;
P328();
P349();
P294();
return;