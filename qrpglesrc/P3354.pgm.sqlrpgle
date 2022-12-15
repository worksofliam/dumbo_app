**free

ctl-opt dftactgrp(*no);

dcl-pi P3354;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1451.rpgleinc'
/copy 'qrpgleref/P2362.rpgleinc'
/copy 'qrpgleref/P3333.rpgleinc'

dcl-ds T330 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T330 FROM T330 LIMIT 1;

theCharVar = 'Hello from P3354';
dsply theCharVar;
P1451();
P2362();
P3333();
return;