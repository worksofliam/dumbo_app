**free

ctl-opt dftactgrp(*no);

dcl-pi P5205;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P578.rpgleinc'
/copy 'qrpgleref/P291.rpgleinc'
/copy 'qrpgleref/P3204.rpgleinc'

dcl-ds T939 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T939 FROM T939 LIMIT 1;

theCharVar = 'Hello from P5205';
dsply theCharVar;
P578();
P291();
P3204();
return;