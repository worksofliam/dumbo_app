**free

ctl-opt dftactgrp(*no);

dcl-pi P424;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P39.rpgleinc'
/copy 'qrpgleref/P350.rpgleinc'
/copy 'qrpgleref/P64.rpgleinc'

dcl-ds T175 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T175 FROM T175 LIMIT 1;

theCharVar = 'Hello from P424';
dsply theCharVar;
P39();
P350();
P64();
return;