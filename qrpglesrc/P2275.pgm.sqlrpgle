**free

ctl-opt dftactgrp(*no);

dcl-pi P2275;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P585.rpgleinc'
/copy 'qrpgleref/P1704.rpgleinc'
/copy 'qrpgleref/P1319.rpgleinc'

dcl-ds T912 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T912 FROM T912 LIMIT 1;

theCharVar = 'Hello from P2275';
dsply theCharVar;
P585();
P1704();
P1319();
return;