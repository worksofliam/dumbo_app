**free

ctl-opt dftactgrp(*no);

dcl-pi P3073;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2217.rpgleinc'
/copy 'qrpgleref/P1773.rpgleinc'
/copy 'qrpgleref/P2169.rpgleinc'

dcl-ds T537 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T537 FROM T537 LIMIT 1;

theCharVar = 'Hello from P3073';
dsply theCharVar;
P2217();
P1773();
P2169();
return;