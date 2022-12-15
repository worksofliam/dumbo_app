**free

ctl-opt dftactgrp(*no);

dcl-pi P1314;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P755.rpgleinc'
/copy 'qrpgleref/P781.rpgleinc'
/copy 'qrpgleref/P944.rpgleinc'

dcl-ds T39 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T39 FROM T39 LIMIT 1;

theCharVar = 'Hello from P1314';
dsply theCharVar;
P755();
P781();
P944();
return;