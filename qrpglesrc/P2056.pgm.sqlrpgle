**free

ctl-opt dftactgrp(*no);

dcl-pi P2056;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P201.rpgleinc'
/copy 'qrpgleref/P828.rpgleinc'
/copy 'qrpgleref/P812.rpgleinc'

dcl-ds T84 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T84 FROM T84 LIMIT 1;

theCharVar = 'Hello from P2056';
dsply theCharVar;
P201();
P828();
P812();
return;