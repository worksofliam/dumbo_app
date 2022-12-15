**free

ctl-opt dftactgrp(*no);

dcl-pi P1128;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P714.rpgleinc'
/copy 'qrpgleref/P63.rpgleinc'
/copy 'qrpgleref/P820.rpgleinc'

dcl-ds T228 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T228 FROM T228 LIMIT 1;

theCharVar = 'Hello from P1128';
dsply theCharVar;
P714();
P63();
P820();
return;