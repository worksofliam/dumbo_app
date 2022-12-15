**free

ctl-opt dftactgrp(*no);

dcl-pi P5566;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2575.rpgleinc'
/copy 'qrpgleref/P2638.rpgleinc'
/copy 'qrpgleref/P5127.rpgleinc'

dcl-ds T978 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T978 FROM T978 LIMIT 1;

theCharVar = 'Hello from P5566';
dsply theCharVar;
P2575();
P2638();
P5127();
return;