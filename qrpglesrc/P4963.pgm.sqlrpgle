**free

ctl-opt dftactgrp(*no);

dcl-pi P4963;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P358.rpgleinc'
/copy 'qrpgleref/P3066.rpgleinc'
/copy 'qrpgleref/P2595.rpgleinc'

dcl-ds T281 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T281 FROM T281 LIMIT 1;

theCharVar = 'Hello from P4963';
dsply theCharVar;
P358();
P3066();
P2595();
return;