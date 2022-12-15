**free

ctl-opt dftactgrp(*no);

dcl-pi P5073;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P556.rpgleinc'
/copy 'qrpgleref/P4503.rpgleinc'
/copy 'qrpgleref/P3494.rpgleinc'

dcl-ds T707 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T707 FROM T707 LIMIT 1;

theCharVar = 'Hello from P5073';
dsply theCharVar;
P556();
P4503();
P3494();
return;