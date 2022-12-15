**free

ctl-opt dftactgrp(*no);

dcl-pi P68;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P65.rpgleinc'
/copy 'qrpgleref/P57.rpgleinc'
/copy 'qrpgleref/P22.rpgleinc'

dcl-ds T41 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T41 FROM T41 LIMIT 1;

theCharVar = 'Hello from P68';
dsply theCharVar;
P65();
P57();
P22();
return;