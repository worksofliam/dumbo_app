**free

ctl-opt dftactgrp(*no);

dcl-pi P2518;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1407.rpgleinc'
/copy 'qrpgleref/P801.rpgleinc'
/copy 'qrpgleref/P616.rpgleinc'

dcl-ds T577 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T577 FROM T577 LIMIT 1;

theCharVar = 'Hello from P2518';
dsply theCharVar;
P1407();
P801();
P616();
return;