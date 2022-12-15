**free

ctl-opt dftactgrp(*no);

dcl-pi P431;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P77.rpgleinc'
/copy 'qrpgleref/P294.rpgleinc'
/copy 'qrpgleref/P111.rpgleinc'

dcl-ds T74 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T74 FROM T74 LIMIT 1;

theCharVar = 'Hello from P431';
dsply theCharVar;
P77();
P294();
P111();
return;