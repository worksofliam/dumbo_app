**free

ctl-opt dftactgrp(*no);

dcl-pi P3556;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3147.rpgleinc'
/copy 'qrpgleref/P2055.rpgleinc'
/copy 'qrpgleref/P1324.rpgleinc'

dcl-ds T323 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T323 FROM T323 LIMIT 1;

theCharVar = 'Hello from P3556';
dsply theCharVar;
P3147();
P2055();
P1324();
return;