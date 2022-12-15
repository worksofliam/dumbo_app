**free

ctl-opt dftactgrp(*no);

dcl-pi P2545;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P171.rpgleinc'
/copy 'qrpgleref/P864.rpgleinc'
/copy 'qrpgleref/P836.rpgleinc'

dcl-ds T941 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T941 FROM T941 LIMIT 1;

theCharVar = 'Hello from P2545';
dsply theCharVar;
P171();
P864();
P836();
return;