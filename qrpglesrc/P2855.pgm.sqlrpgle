**free

ctl-opt dftactgrp(*no);

dcl-pi P2855;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P650.rpgleinc'
/copy 'qrpgleref/P766.rpgleinc'
/copy 'qrpgleref/P430.rpgleinc'

dcl-ds T20 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T20 FROM T20 LIMIT 1;

theCharVar = 'Hello from P2855';
dsply theCharVar;
P650();
P766();
P430();
return;