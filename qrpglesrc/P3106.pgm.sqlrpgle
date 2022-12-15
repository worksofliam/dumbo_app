**free

ctl-opt dftactgrp(*no);

dcl-pi P3106;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2576.rpgleinc'
/copy 'qrpgleref/P850.rpgleinc'
/copy 'qrpgleref/P2542.rpgleinc'

dcl-ds T47 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T47 FROM T47 LIMIT 1;

theCharVar = 'Hello from P3106';
dsply theCharVar;
P2576();
P850();
P2542();
return;