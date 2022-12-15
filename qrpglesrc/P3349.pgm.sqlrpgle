**free

ctl-opt dftactgrp(*no);

dcl-pi P3349;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P358.rpgleinc'
/copy 'qrpgleref/P1121.rpgleinc'
/copy 'qrpgleref/P2742.rpgleinc'

dcl-ds T403 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T403 FROM T403 LIMIT 1;

theCharVar = 'Hello from P3349';
dsply theCharVar;
P358();
P1121();
P2742();
return;