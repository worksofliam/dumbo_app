**free

ctl-opt dftactgrp(*no);

dcl-pi P1986;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P945.rpgleinc'
/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P1899.rpgleinc'

dcl-ds T194 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T194 FROM T194 LIMIT 1;

theCharVar = 'Hello from P1986';
dsply theCharVar;
P945();
P11();
P1899();
return;