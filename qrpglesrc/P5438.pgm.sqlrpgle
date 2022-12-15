**free

ctl-opt dftactgrp(*no);

dcl-pi P5438;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P73.rpgleinc'
/copy 'qrpgleref/P695.rpgleinc'
/copy 'qrpgleref/P2430.rpgleinc'

dcl-ds T864 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T864 FROM T864 LIMIT 1;

theCharVar = 'Hello from P5438';
dsply theCharVar;
P73();
P695();
P2430();
return;