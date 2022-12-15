**free

ctl-opt dftactgrp(*no);

dcl-pi P2574;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P741.rpgleinc'
/copy 'qrpgleref/P2560.rpgleinc'
/copy 'qrpgleref/P2211.rpgleinc'

dcl-ds T351 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T351 FROM T351 LIMIT 1;

theCharVar = 'Hello from P2574';
dsply theCharVar;
P741();
P2560();
P2211();
return;