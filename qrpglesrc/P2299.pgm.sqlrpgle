**free

ctl-opt dftactgrp(*no);

dcl-pi P2299;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1923.rpgleinc'
/copy 'qrpgleref/P1875.rpgleinc'
/copy 'qrpgleref/P476.rpgleinc'

dcl-ds T1243 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1243 FROM T1243 LIMIT 1;

theCharVar = 'Hello from P2299';
dsply theCharVar;
P1923();
P1875();
P476();
return;