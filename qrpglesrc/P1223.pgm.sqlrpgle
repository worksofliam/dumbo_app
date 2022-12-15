**free

ctl-opt dftactgrp(*no);

dcl-pi P1223;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P469.rpgleinc'
/copy 'qrpgleref/P218.rpgleinc'
/copy 'qrpgleref/P1032.rpgleinc'

dcl-ds T483 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T483 FROM T483 LIMIT 1;

theCharVar = 'Hello from P1223';
dsply theCharVar;
P469();
P218();
P1032();
return;