**free

ctl-opt dftactgrp(*no);

dcl-pi P2958;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P861.rpgleinc'
/copy 'qrpgleref/P2480.rpgleinc'
/copy 'qrpgleref/P1957.rpgleinc'

dcl-ds T564 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T564 FROM T564 LIMIT 1;

theCharVar = 'Hello from P2958';
dsply theCharVar;
P861();
P2480();
P1957();
return;