**free

ctl-opt dftactgrp(*no);

dcl-pi P590;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P82.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P281.rpgleinc'

dcl-ds T402 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T402 FROM T402 LIMIT 1;

theCharVar = 'Hello from P590';
dsply theCharVar;
P82();
P12();
P281();
return;