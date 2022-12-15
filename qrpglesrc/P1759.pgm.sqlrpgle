**free

ctl-opt dftactgrp(*no);

dcl-pi P1759;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P882.rpgleinc'
/copy 'qrpgleref/P220.rpgleinc'
/copy 'qrpgleref/P223.rpgleinc'

dcl-ds T197 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T197 FROM T197 LIMIT 1;

theCharVar = 'Hello from P1759';
dsply theCharVar;
P882();
P220();
P223();
return;