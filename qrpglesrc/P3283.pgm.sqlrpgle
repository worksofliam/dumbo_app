**free

ctl-opt dftactgrp(*no);

dcl-pi P3283;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1169.rpgleinc'
/copy 'qrpgleref/P423.rpgleinc'
/copy 'qrpgleref/P1602.rpgleinc'

dcl-ds T848 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T848 FROM T848 LIMIT 1;

theCharVar = 'Hello from P3283';
dsply theCharVar;
P1169();
P423();
P1602();
return;